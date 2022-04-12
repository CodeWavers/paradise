<!-- Purchase Report Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Cash Flow Report</h1>
            <small>Cash Flow Report</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url() ?>"><i class="pe-7s-home"></i>Accounts</a></li>
                <li><a href="#"><?php echo display('report') ?></a></li>
                <li class="active">Cash Flow Report</li>
            </ol>
        </div>
    </section>

    <section class="content">



        <!-- Purchase report -->


        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Cash Flow Report</h4>
                        </div>
                    </div>
                    <div class="panel-body">



                        <div id="purchase_div" class="table-responsive">
                            <h3 align="center">Cash Flow Report</h3>
                            <table class="print-table" width="100%">



                                <tr>

                                    <td align="left" class="print-table-tr">

                                        <img src="<?php echo $software_info[0]->logo;?>" alt="logo">

                                    </td>

                                    <td align="center" class="print-cominfo">

                                                        <span class="company-txt">

                                                            <?php echo $company[0]['company_name'];?>



                                                        </span><br>

                                        <?php echo $company[0]['address'];?>

                                        <br>

                                        <?php echo $company[0]['email'];?>

                                        <br>

                                        <?php echo $company[0]['mobile'];?>



                                    </td>



                                    <td align="right" class="print-table-tr">

                                        <date>

                                            <?php echo display('date')?>: <?php

                                            echo date('d-M-Y');

                                            ?>

                                        </date>

                                    </td>

                                </tr>



                            </table>
                            <div class=" col-xs-12 row">

                                    <table class="table table-striped">

                                        <tbody>
                                        <tr style="text-transform: uppercase">


                                            <td colspan="9" align="center"><b>Cash Flow Statement On <?php echo $dtpFromDate; ?> To <?php echo $dtpToDate;?></b></td>


                                        </tr>

                                        <tr style="background-color: green;color: white;text-transform: uppercase">


                                            <td colspan="9" ><b>Accounts</b></td>


                                        </tr>

                                        <tr>
                                            <td colspan="8"><b>Beginning Cash Balance </b></td>

                                            <?php if ($cash_eq) : ?>
                                                <td colspan="8"><b><?php echo  number_format($cash_eq, 2) ?></b></td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>
                                        </tr>

                                        <tr>
                                            <td colspan="9"><u><b>Cash Flow from Operating Activities:</b></u></td>


                                        </tr>
                                        <tr>

                                            <td colspan="8"><b>Current Assets </b></td>

                                            <?php if ($current_assets) : ?>
                                                <td colspan="8"><b><?php echo  number_format($current_assets, 2) ?>

                                                    <?php echo $current_assets > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                    </b></td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>
                                        </tr>



                                        <tr>
                                            <td></td>
                                            <td colspan="7">Cash In Hand</td>

                                            <?php if ($cash_hand) : ?>
                                                <td colspan="6"><?php echo  number_format($cash_hand, 2) ?>
                                                    <?php echo $cash_hand > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="6"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>
                                   <tr>
                                       <td></td>
                                            <td colspan="7">Cash At Bank</td>

                                            <?php if ($cash_bank) : ?>
                                                <td colspan="7"><?php echo  number_format($cash_bank, 2) ?>
                                                    <?php echo $cash_bank > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>

                                        <?php foreach ($cash_bank_c as $i) { ?>

                                            <?php if ($i['amount'] > 0) { ?>
                                                <tr>
                                                    <td ></td>
                                                    <td colspan="7" ><?php echo $i['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>
                                            <td></td>
                                            <td colspan="7">Cash At Bkash</td>

                                            <?php if ($cash_bkash) : ?>
                                                <td colspan="7"><?php echo  number_format($cash_bkash, 2) ?>
                                                    <?php echo $cash_bkash > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($cash_bkash_c as $i) { ?>

                                            <?php if ($i['amount'] > 0) { ?>
                                                <tr>
                                                    <td></td>
                                                    <td colspan="7"><?php echo $i['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>
                                            <td></td>
                                            <td colspan="7">Cash At Nagad</td>

                                            <?php if ($cash_nagad) : ?>
                                                <td colspan="7"><?php echo  number_format($cash_nagad, 2) ?>
                                                    <?php echo $cash_nagad > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($cash_nagad_c as $i) { ?>

                                            <?php if ($i['amount'] > 0) { ?>
                                                <tr>
                                                    <td></td>
                                                    <td colspan="7"> <?php echo $i['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>
                                            <td></td>
                                            <td colspan="7">Account Receivable</td>

                                            <?php if ($acc_rcv) : ?>
                                                <td colspan="7"><?php echo  number_format($acc_rcv, 2) ?>
                                                    <?php echo $acc_rcv > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($acc_rcv_c as $i) { ?>

                                            <?php if ($i['amount'] > 0) { ?>
                                                <tr>
                                                    <td></td>
                                                    <td colspan="7"><?php echo $i['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>
                                            <td></td>
                                            <td colspan="7">Inventory Asset</td>

                                            <?php if ($inventory) : ?>
                                                <td colspan="7"><?php echo  number_format($inventory, 2) ?>
                                                    <?php echo $inventory > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td colspan="7">Closing Inventory</td>

                                            <?php if ($closing_inventory) : ?>
                                                <td colspan="7"><?php echo  number_format($closing_inventory, 2) ?>
                                                    <?php echo $closing_inventory > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>

                                        <tr>

                                            <td></td>
                                            <td colspan="7">Other Current Asset</td>

                                            <?php if ($other_current) : ?>
                                                <td colspan="7"><?php echo  number_format($other_current, 2) ?>
                                                    <?php echo $other_current > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($other_current_C as $c) { ?>


                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td colspan="6"><?php echo $c['HeadName'] ?></td>
                                                <td colspan="6"><?php echo $c['amount'] ?></td>

                                            </tr>
                                        <?php } ?>



                                        <tr>
                                            <td colspan="8"><b>Current Liabilities</b></td>

                                            <?php if ($current_liabilities) : ?>
                                                <td colspan="8"><b><?php echo  number_format($current_liabilities, 2) ?></b>
                                                    <?php echo $current_liabilities > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>
                                        </tr>

                                        <tr>
                                            <td></td>
                                            <td colspan="7">Account Payable</td>


                                            <?php if ($acc_pay) : ?>
                                                <td colspan="7"><?php echo  number_format($acc_pay, 2) ?>
                                                    <?php echo $acc_pay > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                            <?php endif; ?>
                                        </tr>
                                        <?php foreach ($acc_pay_c as $i) { ?>
                                            <?php if ($i['amount'] > 0) { ?>

                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td colspan="6"><?php echo $i['HeadName'] ?></td>
                                                    <td colspan="6"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>






                                        <tr>

                                            <td colspan="8"><b>Other Liabilities</b></td>

                                            <?php if ($non_current_liabilities) : ?>
                                                <td colspan="8"><b><?php echo  number_format($non_current_liabilities, 2) ?></b>
                                                    <?php echo $non_current_liabilities > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                </td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($non_current_liabilities_c as $i) { ?>
                                            <?php if ($i['amount'] > 0) { ?>

                                                <tr>
                                                    <td></td>
                                                    <td colspan="7"><?php echo $i['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $i['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>


                                        <?php

                                        $net_income=(($total_sale-($total_i+$direct_expense))-$op_expense)+$indirect_income-$indirect_expense;
                                            $noa=$current_assets+$current_liabilities+$net_income;
                                            $nia=$fixed_assets;
                                            $nfa=$long_term_l+$drawing;

                                            $ncc=$noa+$nia+$nfa;
                                            $ecb=$cash_eq-$ncc;

                                        ?>

                                        <tr>

                                            <td colspan="8"><b>Net Income</b></td>

                                            <?php if ($net_income) : ?>
                                                <td colspan="8"><b><?php echo  number_format($net_income, 2) ?>
                                                        <?php echo $net_income > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                    </b></td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>


                                        </tr>

                                        <tr style="color: green;">
                                            <td  colspan="8"><b>Net Cash Flow From Operating Activities</b></td>
                                            <td  colspan="8"><b><?php echo  number_format($noa, 2) ?></b></td>

                                        </tr>

                                        <tr>
                                            <td colspan="9"><u><b>Cash Flow from Investing Activities:</b></u></td>


                                        </tr>

                                        <tr>


                                            <td colspan="8"><b>Fixed Assets</b></td>

                                                                                        <?php if ($fixed_assets) : ?>
                                                                                            <td colspan="8"><b><?php echo  number_format($fixed_assets, 2) ?>
                                                                                                    <?php echo $fixed_assets > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                                                                </b></td>
                                                                                        <?php else : ?>
                                                                                            <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                                                                        <?php endif; ?>
                                        </tr>




                                        <?php foreach ($fixed_assets_c as $i) { ?>


                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td colspan="7"><?php echo $i['HeadName'] ?></td>
                                                <td colspan="7"><?php echo $i['amount'] ?></td>

                                            </tr>
                                        <?php } ?>

                                        <tr style="color: green;">
                                            <td  colspan="8"><b>Net Cash Flow From Investing Activities</b></td>
                                            <td  colspan="8"><b><?php echo  number_format($nia, 2) ?></b></td>

                                        </tr>

                                        <tr>
                                            <td colspan="9"><u><b>Cash Flow from Financing Activities:</b></u></td>


                                        </tr>


                                        <tr>

                                            <td colspan="8"><b>Long Term Liabilities</b></td>

                                            <?php if ($long_term_l) : ?>
                                                <td colspan="8"><b><?php echo  number_format($long_term_l, 2) ?>

                                                        <?php echo $long_term_l > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                    </b></td>
                                            <?php else : ?>
                                                <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                            <?php endif; ?>
                                        </tr>


                                        <?php foreach ($long_term_l_c as $l) { ?>
                                            <?php if ($l['amount'] > 0) { ?>

                                                <tr>
                                                    <td></td>
                                                    <td colspan="7"><?php echo $l['HeadName'] ?></td>
                                                    <td colspan="7"><?php echo $l['amount'] ?></td>

                                                </tr>
                                            <?php } ?>
                                        <?php } ?>
                                        <tr>

                                            <td colspan="8"><b>Drawings</b></td>

                                                                                        <?php if ($drawing) : ?>
                                                                                            <td colspan="8"><b><?php echo  number_format($drawing, 2) ?>

                                                                                                    <?php echo $current_assets > 0 ? '<i class="fa fa-arrow-circle-up text-success"></i>' : '<i class="fa fa-arrow-circle-down text-danger"></i>';?>

                                                                                                </b></td>
                                                                                        <?php else : ?>
                                                                                            <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                                                                        <?php endif; ?>
                                        </tr>



                                        <tr style="color: green;">
                                            <td  colspan="8"><b>Net Cash Flow From Financing Activities</b></td>
                                            <td  colspan="8"><b><?php echo  number_format($nfa, 2) ?></b></td>

                                        </tr>

                                        <tr style="color: green; border: 2px solid black">
                                            <td  colspan="8"><b>Net Cash Changes</b></td>
                                            <td  colspan="8"><b><?php echo  number_format($ncc, 2) ?></b></td>

                                        </tr>

                                        <tr style="color: green;border: 2px solid black">
                                            <td  colspan="8"><b>Ending Cash Balance</b></td>
                                            <td  colspan="8"><b><?php echo  number_format($ecb, 2) ?></b></td>

                                        </tr>
                                        </tbody>



                                    </table>





                            </div>

                        </div>
                        <div class="panel-footer text-left">

                            <button class="btn btn-info" onclick="printDiv('purchase_div')"><span class="fa fa-print"></span></button>

                        </div>
                        <div class="text-right"><?php echo $links ?></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Purchase Report End -->