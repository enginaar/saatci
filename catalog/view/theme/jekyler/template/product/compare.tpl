<?php echo $header; ?>
<main>
    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <?php $brdsize=count($breadcrumbs); $bar=1;foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?>
                        <?php if($bar==$brdsize):?>
                        <?php else: ?>
                        <span>/ </span>
                        <?php endif;?>
                    </a></li>
                <?php $bar=$bar+1; } ?>
            </ul>
        </div>
    </div>
    <div class="main-container col1-layout">
        <div class="container">
            <div class="main">
                <div class="col-main">
                    <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                    </div>
                    <?php } ?>
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <?php if ($products) { ?>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $text_product; ?></strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><?php echo $text_name; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><a href="<?php echo $products[$product['product_id']]['href']; ?>"><strong><?php echo $products[$product['product_id']]['name']; ?></strong></a></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_image; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td class="text-center"><?php if ($products[$product['product_id']]['thumb']) { ?>
                                            <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" title="<?php echo $products[$product['product_id']]['name']; ?>" class="img-thumbnail" />
                                            <?php } ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_price; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php if ($products[$product['product_id']]['price']) { ?>
                                            <?php if (!$products[$product['product_id']]['special']) { ?>
                                            <?php echo $products[$product['product_id']]['price']; ?>
                                            <?php } else { ?>
                                            <span class="price-old"><?php echo $products[$product['product_id']]['price']; ?> </span> <span class="price-new"> <?php echo $products[$product['product_id']]['special']; ?> </span>
                                            <?php } ?>
                                            <?php } ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_model; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php echo $products[$product['product_id']]['model']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_manufacturer; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_availability; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php echo $products[$product['product_id']]['availability']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <?php if ($review_status) { ?>
                                    <tr>
                                        <td><?php echo $text_rating; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
                                            <?php if ($products[$product['product_id']]['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <?php } ?>
                                            <?php } ?>
                                            <br />
                                            <?php echo $products[$product['product_id']]['reviews']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <?php } ?>
                                    <tr>
                                        <td><?php echo $text_summary; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_weight; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php echo $products[$product['product_id']]['weight']; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td><?php echo $text_dimension; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
                                        <?php } ?>
                                    </tr>
                                </tbody>
                                <?php foreach ($attribute_groups as $attribute_group) { ?>
                                <thead>
                                    <tr>
                                        <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                    </tr>
                                </thead>
                                <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
                                <tbody>
                                    <tr>
                                        <td><?php echo $attribute['name']; ?></td>
                                        <?php foreach ($products as $product) { ?>
                                        <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
                                        <td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
                                        <?php } else { ?>
                                        <td></td>
                                        <?php } ?>
                                        <?php } ?>
                                    </tr>
                                </tbody>
                                <?php } ?>
                                <?php } ?>
                                <tr>
                                    <td></td>
                                    <?php foreach ($products as $product) { ?>
                                    <td><button type="button" class="btn button btn-block" onclick="cart.add('<?php echo $product['product_id']; ?>');" ><span><span><?php echo $button_cart; ?></span></span></button>
                                        <a href="<?php echo $product['remove']; ?>" class="btn btn-danger btn-block"><?php echo $button_remove; ?></a></td>
                                    <?php } ?>
                                </tr>
                            </table>
                            <?php } else { ?>
                            <p><?php echo $text_empty; ?></p>
                            <div class="buttons buttons-set">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn button"><span><span><?php echo $button_continue; ?></span></span></a></div>
                            </div>
                            <?php } ?>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>
