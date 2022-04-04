<!-- Purchase Report Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1>Profit Loss Report</h1>
            <small>Profit Loss Report</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url() ?>"><i class="pe-7s-home"></i>Profit Loss Report</a></li>
                <li><a href="#"><?php echo display('report') ?></a></li>
                <li class="active">Profit Loss Report</li>
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
                            <h4>Profit Loss Report</h4>
                        </div>
                    </div>
                    <div class="panel-body">





                        <div id="purchase_div" class="table-responsive">
                            <h3 align="center">Profit Loss Report</h3>
                            <table class="print-table" width="100%">

                                <tr>
                                    <td align="left" class="print-table-tr">
                                        <img src="<?php echo $software_info[0]['logo']; ?>" alt="logo">
                                    </td>
                                    <td align="center" class="print-cominfo">
                                        <span class="company-txt">
                                            <?php echo $company[0]['company_name']; ?>

                                        </span><br>
                                        <?php echo $company[0]['address']; ?>
                                        <br>
                                        <?php echo $company[0]['email']; ?>
                                        <br>
                                        <?php echo $company[0]['mobile']; ?>

                                    </td>

                                    <td align="right" class="print-table-tr">
                                        <date>
                                            <?php echo display('date') ?>: <?php
                                                                            echo date('d-M-Y');
                                                                            ?>
                                        </date>
                                    </td>
                                </tr>

                            </table>
                            <div class=" col-xs-12 ">
                                <table class="table table-striped">
                                    <tbody>
                                    <tr>
                                        <td colspan="8"><b>Operating Income</b></td>


                                        <?php if ($total_sale) : ?>
                                            <td colspan="8"><b><?php echo  number_format($total_sale, 2) ?></b></td>
                                        <?php else : ?>
                                            <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>

                                    <tr>

                                        <td></td>
                                        <td colspan="7"> Sales</td>

                                        <?php if ($product_sale) : ?>
                                            <td colspan="7"><?php echo  number_format($product_sale, 2) ?></td>
                                        <?php else : ?>
                                            <td colspan="7"><?php echo number_format('0', 2) ?></td>
                                        <?php endif; ?>

                                    </tr>

<!--                                    <tr>-->
<!---->
<!---->
<!--                                        <td colspan="8" align="left">(-)Sales Return</td>-->
<!---->
<!--                                        --><?php //if ($sale_return) : ?>
<!--                                            <td colspan="8">--><?php //echo  number_format($sale_return, 2) ?><!--</td>-->
<!--                                        --><?php //else : ?>
<!--                                            <td colspan="8">--><?php //echo number_format('0', 2) ?><!--</td>-->
<!--                                        --><?php //endif; ?>
<!---->
<!--                                    </tr>-->
<!--                                    <tr>-->
<!---->
<!---->
<!--                                        <td colspan="8" align="left">Service Income</td>-->
<!---->
<!--                                        --><?php //if ($service_income) : ?>
<!--                                            <td colspan="8">--><?php //echo  number_format($service_income, 2) ?><!--</td>-->
<!--                                        --><?php //else : ?>
<!--                                            <td colspan="8">--><?php //echo number_format('0', 2) ?><!--</td>-->
<!--                                        --><?php //endif; ?>
<!---->
<!--                                    </tr>-->
                                    <tr style="border: 2px solid black">
                                        <td  colspan="8"><b>Total Operating Income</b></td>


                                        <?php if ($total_sale) : ?>
                                            <td  colspan="8"><b><span style="border-bottom-style:double; border-bottom-width: 5px;"><?php echo  number_format($total_sale, 2) ?></span></b></td>
                                        <?php else : ?>
                                            <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>

                                    <tr>
                                        <td  colspan="8"><b>Costs of Goods Sold</b></td>

                                        <?php if ($total_i) : ?>
                                            <td  colspan="8"><b><?php echo  number_format($total_i, 2) ?></b></td>
                                        <?php else : ?>
                                            <td  colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>



                                    <tr>
                                        <td colspan="8"><b>Direct Expense</b></td>

                                        <?php if($direct_expense):?>
                                            <td  colspan="8"><b><?php echo  number_format($direct_expense,2)?></b></td>
                                        <?php else:?>
                                            <td  colspan="8"><b><?php echo number_format('0',2)?></b></td>
                                        <?php endif;?>
                                    </tr>
                                    <?php foreach ($expense as $direct_expense){ ?>
                                        <?php if ($i['amount'] > 0 ){ ?>

                                            <tr>
                                                <td></td>
                                                <td><?php echo $direct_expense['HeadName'] ?></td>
                                                <td><?php echo $direct_expense['amount']?></td>
                                                <td></td>
                                            </tr>
                                        <?php } ?>
                                    <?php } ?>


<!--                                    <tr>-->
<!--                                        <td colspan="8"></td>-->
<!--                                        <td  colspan="8"><b>--><?php //echo number_format($abc,2)?><!--</b></td>-->
<!--                                    </tr>-->
                                    <tr style="border: 2px solid black;">
                                        <td  colspan="8"><b>Total Cost of Goods Sold</b></td>


                                        <?php if ($total_i) : ?>
                                            <td  colspan="8"><span style="border-bottom-style:double; border-bottom-width: 5px;"><b><?php echo  number_format($total_i+$direct_expense  , 2) ?></b></span></td>
                                        <?php else : ?>
                                            <td  colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>
                                    <tr style="color: green">
                                        <td></td>
                                        <td colspan="8" style="float: right"><b>Gross Profit:</b></td>

                                        <td  colspan="8" ><b><?php echo  number_format($gp=$total_sale-($total_i+$direct_expense), 2) ?></b></td>


                                    </tr>




                                    <tr>
                                        <td colspan="8"><b>Operating Expenses</b></td>

                                        <?php if($op_expense):?>
                                            <td  colspan="8"><b><?php echo  number_format($op_expense,2)?></b></td>
                                        <?php else:?>
                                            <td  colspan="8"><b><?php echo number_format('0',2)?></b></td>
                                        <?php endif;?>
                                    </tr>
                                    <?php foreach ($o_expense as $o){ ?>
                                        <?php if ($o['HeadLevel'] == 2 ){

                                            $row_total=$this->db->select('sum(debit)-sum(credit) as row_total')->from('acc_transaction')->like('COAID', $o['COAID'] ,'after')->get()->row()->row_total;
                                            ?>


                                            <tr>
                                                <td></td>

                                                <td colspan="7"><b><?php echo $o['HeadName'] ?></b></td>
                                                <td colspan="7"><b><?php echo $row_total > 0? $row_total : "0.00";?></b></td>

                                            </tr>

                                           <?php } else{?>
                                            <?php if ($o['amount'] > 0) { ?>
                                            <tr>
                                                <td></td>
                                                <td colspan="7"><?php echo $o['HeadName'] ?></td>
                                                <td colspan="7"><?php echo $o['amount']?></td>

                                            </tr>
                                    <?php } ?>
                                        <?php } ?>
                                    <?php } ?>

                                    <tr style="border: 2px solid black">
                                        <td  colspan="8"><b>Total Operating Expenses</b></td>
                                        <td  colspan="8"><b><?php echo  number_format($op_expense, 2) ?></b></td>
                                    </tr>

                                    <tr style="color: green">
                                        <td></td>
                                        <td  colspan="7" style="float: right"><b>Operating Profit:</b></td>
                                        <td  colspan="7"><b><?php echo  number_format($op=$gp-$op_expense, 2) ?></b></td>
                                    </tr>



<!--                                    <tr>-->
<!--                                        <td  colspan="8"><b>Gross Profit/Loss(b/f)</b></td>-->
<!---->
<!---->
<!--                                        <td  colspan="8"><b>--><?php //echo  number_format($gross_profit, 2) ?><!--</b></td>-->
<!---->
<!---->
<!--                                    </tr>-->
                                    <tr>
                                        <td colspan="8"><b>Non Operating Income</b></td>


                                        <?php if ($indirect_income > 0) : ?>
                                            <td colspan="8"><b><?php echo  number_format($indirect_income, 2) ?></b></td>
                                        <?php else : ?>
                                            <td colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>

                                    <?php foreach ($indirect_income_c as $i) { ?>
                                        <?php if ($i['amount'] > 0) { ?>

                                            <tr>
                                                <td></td>
                                                <td colspan="7"><?php echo $i['HeadName'] ?></td>
                                                <td colspan="7"><?php echo $i['amount'] ?></td>
                                            </tr>
                                        <?php } ?>
                                    <?php } ?>

                                    <tr style="border: 2px solid black">
                                        <td  colspan="8"><b>Total Non Operating Income</b></td>
                                        <td  colspan="8"><b><?php echo  number_format($indirect_income, 2) ?></b></td>

                                    </tr>

                                    <tr>
                                        <td  colspan="8"><b>Non Operating Expense</b></td>

                                        <?php if ($indirect_expense) : ?>
                                            <td  colspan="8"><b><?php echo  number_format($indirect_expense, 2) ?></b></td>
                                        <?php else : ?>
                                            <td  colspan="8"><b><?php echo number_format('0', 2) ?></b></td>
                                        <?php endif; ?>
                                    </tr>

                                    <?php foreach ($indirect_expense_c as $i) { ?>
                                        <?php if ($i['amount'] > 0) { ?>

                                            <tr>
                                                <td></td>
                                                <td  colspan="7"><?php echo $i['HeadName'] ?></td>
                                                <td  colspan="7"><?php echo $i['amount'] ?></td>

                                            </tr>
                                        <?php } ?>
                                    <?php } ?>

                                    <tr style="border: 2px solid black">
                                        <td  colspan="8"><b>Total Non Operating Expense</b></td>
                                        <td  colspan="8"><b><?php echo  number_format($indirect_expense, 2) ?></b></td>

                                    </tr>

                                    <tr style="color: green">
                                        <td></td>
                                        <td  colspan="7" style="float: right"><b>Net Profit/Loss:</b></td>
                                        <td  colspan="7"><b><?php echo  number_format($op+$indirect_income-$indirect_expense, 2) ?></b></td>
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