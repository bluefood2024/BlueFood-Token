module blue::blue {
    use std::ascii::string;
    use std::option;
    use sui::url;
    use sui::coin;
    use sui::transfer;
    use sui::tx_context;

    struct BLUE has drop {}

    const DECIMALS: u8 = 9;
    const SYMBOL: vector<u8> = b"BLUE";
    const NAME: vector<u8> = b"BlueFood Token";
    const DESCRIPTION: vector<u8> = b"The world's first sustainable Marine Aquaculture Token (Token). To promote sustainable blue food development and maintain marine Aquaculture resources.";
    const ICON_URL: vector<u8> = b"https://gateway.irys.xyz/KuTIVGn1Xb1wveRHRbfJzGPclApzZTO7Mtb5bh1-R7U";

    fun init(otw: BLUE, ctx: &mut tx_context::TxContext) {
        let (treasury_cap, meta_data) = coin::create_currency(
            otw,
            DECIMALS,
            SYMBOL,
            NAME,
            DESCRIPTION,
            option::some( url::new_unsafe(string(ICON_URL)) ),
            ctx,
        );

        let sender = tx_context::sender(ctx);
        transfer::public_transfer(treasury_cap, sender);
        transfer::public_transfer(meta_data, sender);
    }
}


