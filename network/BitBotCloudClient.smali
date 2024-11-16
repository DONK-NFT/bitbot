.class public interface abstract Lcom/chlegou/bitbot/network/BitBotCloudClient;
.super Ljava/lang/Object;
.source "BitBotCloudClient.java"


# static fields
.field public static final API_ACCESS_KEY:Ljava/lang/String; = "API-ACCESS-KEY"

.field public static final API_ACCESS_KEY_VALUE:Ljava/lang/String;

.field public static final BASE_PATH:Ljava/lang/String; = "s/freebitcoin/api/"

.field public static final PATH_GET_AUTO_ACCOUNT:Ljava/lang/String; = "s/freebitcoin/api/accounts/auto/{id}"

.field public static final PATH_GET_AUTO_ACCOUNTS:Ljava/lang/String; = "s/freebitcoin/api/accounts/auto"

.field public static final PATH_GET_AUTO_ACCOUNT_READY_FOR_AUTO_ROLL:Ljava/lang/String; = "s/freebitcoin/api/accounts/auto/{id}/roller"

.field public static final PATH_GET_AUTO_BONUS_AWAITING_PRODUCTS:Ljava/lang/String; = "s/freebitcoin/api/accounts/rp-settings/{id}/auto-bonus"

.field public static final PATH_GET_RP_BONUSES_LIST:Ljava/lang/String; = "s/freebitcoin/api/accounts/permit-all/rp-bonuses"

.field public static final PATH_POST_AUTO_ACCOUNT_EVENT:Ljava/lang/String; = "s/freebitcoin/api/accounts/event/{id}"

.field public static final PATH_POST_SAVE_AUTO_BONUS_SETTING:Ljava/lang/String; = "s/freebitcoin/api/accounts/rp-settings/{id}/auto-bonus"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/chlegou/bitbot/network/RetrofitClient;->getBitBotAPIInstance()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/network/BitBotCloudClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;

    sput-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;

    .line 25
    invoke-static {}, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->generateAccessKeyValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->API_ACCESS_KEY_VALUE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAutoAccount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "API-ACCESS-KEY"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "s/freebitcoin/api/accounts/auto/{id}"
    .end annotation
.end method

.method public abstract getAutoAccountReadyForAutoRoll(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "API-ACCESS-KEY"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "s/freebitcoin/api/accounts/auto/{id}/roller"
    .end annotation
.end method

.method public abstract getAutoAccounts()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "s/freebitcoin/api/accounts/auto"
    .end annotation
.end method

.method public abstract getAutoBonusAwaitingProducts(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/chlegou/bitbot/models/DataWrapper<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "s/freebitcoin/api/accounts/rp-settings/{id}/auto-bonus"
    .end annotation
.end method

.method public abstract getRPBonuses()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinBonus<",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinBonus$ConfigItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "s/freebitcoin/api/accounts/permit-all/rp-bonuses"
    .end annotation
.end method

.method public abstract saveAutoBonusSetting(Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinAutoBonusConfig;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/chlegou/bitbot/models/FreeBitcoinAutoBonusConfig;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAutoBonusConfig;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "s/freebitcoin/api/accounts/rp-settings/{id}/auto-bonus"
    .end annotation
.end method

.method public abstract saveEventDetails(Ljava/lang/String;Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "API-ACCESS-KEY"
        .end annotation
    .end param
    .param p3    # Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "s/freebitcoin/api/accounts/event/{id}"
    .end annotation
.end method
