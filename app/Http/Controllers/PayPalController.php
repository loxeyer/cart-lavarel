<?php

/**
 * PAYPAL API SERVICE TEST
 */

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Shop as Shop;
use App\Models\ShopOrder;
use App\Models\ShopOrderHistory;
use App\Scart\Payment\PayPalService as PayPalSvc;
use Illuminate\Http\Request;

class PayPalController extends Controller
{
    private $order_status = 1; // pending
    private $order_faild  = 5; // faild
    private $paypalSvc;

    public function __construct(PayPalSvc $paypalSvc)
    {
        // parent::__construct();

        $this->paypalSvc = $paypalSvc;
    }

    public function index(Request $request)
    {
        $data     = session('data_payment');
        $order_id = $data['order_id'];
        unset($data['order_id']);
        session()->forget('data_payment');
        $transactionDescription = "From website";
        $paypalCheckoutUrl      = $this->paypalSvc
        // ->setCurrency('eur')
            ->setReturnUrl(url('payment/return/' . $order_id))
            ->setCancelUrl(url('cart.html'))
            ->setItem($data)
        // ->setItem($data[0])
        // ->setItem($data[1])
            ->createPayment($transactionDescription);
        if ($paypalCheckoutUrl) {
            return redirect($paypalCheckoutUrl);
        } else {
            ShopOrder::find($order_id)->update(['status' => $this->order_faild]);

        }
    }

    public function getReturn($order_id)
    {
        if (!empty(session('paypal_payment_id'))) {
            $paymentStatus = $this->paypalSvc->getPaymentStatus();
            if ($paymentStatus) {
                ShopOrder::find($order_id)->update(['transaction' => $paymentStatus->id, 'payment_method' => 'paypal', 'status' => $this->order_status]);
                //Add history
                $dataHistory = [
                    'order_id' => $order_id,
                    'content'  => 'Transaction ' . $paymentStatus->id,
                    'user_id'  => empty(\Auth::user()->id) ? 0 : \Auth::user()->id,
                    'add_date' => date('Y-m-d H:i:s'),
                ];
                ShopOrderHistory::insert($dataHistory);
                return (new Shop)->completeOrder($order_id);
            } else {
                //
            }

        } else {
            //
        }

    }

    public function paymentList()
    {
        $limit  = 10;
        $offset = 0;

        $paymentList = $this->paypalSvc->getPaymentList($limit, $offset);

        dd($paymentList);
    }

    public function paymentDetail($paymentId)
    {
        $paymentDetails = $this->paypalSvc->getPaymentDetails($paymentId);

        dd($paymentDetails);
    }
}
