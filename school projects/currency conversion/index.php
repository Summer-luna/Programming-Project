<?php 
    @include_once $_SERVER['DOCUMENT_ROOT'] . "/flourish/toinclude.php";
    $mydb = new fDatabase("mysql", "id17481197_myamazonia", "id17481197_xc2p6amazonia", "54s|\$E_A=Yryk9>", "localhost");
    $result = $mydb->query("SELECT currencyname, currencycode, againstusd FROM exchrate ORDER BY currencyname");
    
    $currencyname = array();
    $currencycode = array();
    $currencyrate = array();
    
    foreach($result as $row){
        $currencyname[] = $row['currencyname'];
        $currencycode[] = $row['currencycode'];
        $currencyrate[] = $row['againstusd'];
    }
    
    
?>

<html>
    <head>
        <link rel="stylesheet" href="https://www.w3.org/StyleSheets/Core/Chocolate">
    </head>
    <body>
        <table>
            <tr>
                <td style="text-align: right;">Convert:</td>
                <td>
                    <input type="radio" name="usd" id="from_usd" value="1" checked>
                    <label for="from_usd">From USD</label><br/>
                    
                    <input type="radio" name="usd" id="to_usd" value="2">
                    <label for="to_usd">To USD</label>
                    
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">Filter (optional):</td>
                <td>
                    <input type="text" name="filter" id="filter" placeholder="-Put filter here-">
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">Other currency:</td>
                <td>
                    <select name="other_currency" id="other_currency">
                        <option value="0">-Select a currency-</option>
                        <?php
                            foreach($currencyname as $name){
                        ?>
                                <option value="<?php echo $name ?>">
                                    <?php echo $name;?>
                                </option>
                        <?php
                            }
                        ?>
                    </select>
                    
                    
                    <span id="errormsg1"></span>
                    
                    
                </td>
                
            </tr>
            <tr>
                <td style="text-align: right;">Amount to convert:</td>
                <td>
                    <input type="number" name="amount" id="amount">
                    <span id="displayCode"></span>
                    <span id="errormsg2"></span>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">The amount is: </td>
                <td id="result"></td>
            </tr>
        </table>
        
        <script type="text/javascript">
            var currencyName = <?php echo json_encode($currencyname);?>;
            var currencyCode = <?php echo json_encode($currencycode);?>;
            var currencyRate = <?php echo json_encode($currencyrate);?>;
        </script>
        
        <script src="OnYourOwn_CurrencyConvertion.js"></script>
    </body>
</html>