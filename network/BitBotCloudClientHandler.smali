.class public Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;
.super Ljava/lang/Object;
.source "BitBotCloudClientHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitBotCloudClientHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateAccessKeyValue()Ljava/lang/String;
    .locals 4

    .line 21
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.chlegou.bitbot"

    aput-object v3, v1, v2

    const-string v2, "KEY_FOR_APP::%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chlegou/bitbot/utils/Tools;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoAccount(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinAccount;
    .locals 3

    .line 26
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;

    sget-object v1, Lcom/chlegou/bitbot/network/BitBotCloudClient;->API_ACCESS_KEY_VALUE:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/chlegou/bitbot/network/BitBotCloudClient;->getAutoAccount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 27
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 31
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    const-string v1, "cached exception in getAutoAccount."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAutoAccountReadyForAutoRoll(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinAccount;
    .locals 3

    .line 38
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;

    sget-object v1, Lcom/chlegou/bitbot/network/BitBotCloudClient;->API_ACCESS_KEY_VALUE:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/chlegou/bitbot/network/BitBotCloudClient;->getAutoAccountReadyForAutoRoll(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 39
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chlegou/bitbot/models/FreeBitcoinAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    const-string v1, "cached exception in getAutoAccount."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAutoBonusAwaitingProducts(Ljava/lang/String;)Lcom/chlegou/bitbot/models/DataWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/chlegou/bitbot/models/DataWrapper<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;

    invoke-interface {v0, p0}, Lcom/chlegou/bitbot/network/BitBotCloudClient;->getAutoBonusAwaitingProducts(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/models/DataWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    const-string v2, "cached exception in getAutoAccount."

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    invoke-static {}, Lcom/chlegou/bitbot/models/DataWrapper;->builder()Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;->id(Ljava/lang/Object;)Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;->data(Ljava/lang/Object;)Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/DataWrapper$DataWrapperBuilder;->build()Lcom/chlegou/bitbot/models/DataWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static saveEventDetails(Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/chlegou/bitbot/network/BitBotCloudClient;->instance:Lcom/chlegou/bitbot/network/BitBotCloudClient;

    sget-object v1, Lcom/chlegou/bitbot/network/BitBotCloudClient;->API_ACCESS_KEY_VALUE:Ljava/lang/String;

    invoke-interface {v0, p0, v1, p1}, Lcom/chlegou/bitbot/network/BitBotCloudClient;->saveEventDetails(Ljava/lang/String;Ljava/lang/String;Lcom/chlegou/bitbot/models/FreeBitcoinEventRequest;)Lretrofit2/Call;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lcom/chlegou/bitbot/network/BitBotCloudClientHandler;->TAG:Ljava/lang/String;

    const-string v0, "cached exception in redeemRPProduct."

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
