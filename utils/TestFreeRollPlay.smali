.class public Lcom/chlegou/bitbot/utils/TestFreeRollPlay;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TEST"

.field public static btcAddress:Ljava/lang/String; = "13RYcEpdfni2D9J4QXKwSokKzv5rTNfY6w"

.field public static csrfToken:Ljava/lang/String; = "rYJOtrQAqT42"

.field public static loginAuth:Ljava/lang/String; = "d5f2cf14c1cc27881768c9900c424b8c5b8d7b94aeed01423cafb265b34bd59d"

.field public static password:Ljava/lang/String; = "decccde3a83725e66f271375238c11829a2237bcececcb5a056a442ba5ee567c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCookies()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "csrf_token"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->csrfToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "login_auth"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->loginAuth:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "btc_address"

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->btcAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "password"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ga"

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "GA1.2.2094093837.1526672656"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_gid"

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "GA1.2.410588637.1558179599"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "have_account"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sget-object v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->csrfToken:Ljava/lang/String;

    const-string v2, "csrf_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "op"

    const-string v2, "free_play"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_seed"

    const-string/jumbo v2, "vMSn9OKJMKhlXXZS"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pwc"

    const-string v2, "1"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "g_recaptcha_response"

    const-string p1, ""

    .line 73
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fingerprint"

    const-string p1, "ed82cf54da9cf77f31a08ae299457514"

    .line 74
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fingerprint2"

    const-string p1, "2342389432"

    .line 75
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static buildFreePlayCheckQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sget-object v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->csrfToken:Ljava/lang/String;

    const-string v2, "csrf_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s"

    .line 84
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static buildHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pragma"

    const-string v2, "no-cache"

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referer"

    const-string v2, "https://freebitco.in/?op=home"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "user-agent"

    const-string v2, "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->csrfToken:Ljava/lang/String;

    const-string/jumbo v2, "x-csrf-token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x-requested-with"

    const-string v2, "XMLHttpRequest"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildCookies()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 95
    invoke-static {}, Lcom/chlegou/bitbot/network/RetrofitClient;->getPublicInstance()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/chlegou/bitbot/network/HttpClient;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chlegou/bitbot/network/HttpClient;

    .line 98
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 99
    invoke-static {}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;->builder()Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "https://freebitco.in/"

    invoke-interface {p0, v4, v2, v3}, Lcom/chlegou/bitbot/network/HttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;-><init>(Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;Ljava/util/concurrent/CountDownLatch;Lcom/chlegou/bitbot/network/HttpClient;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 319
    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Waiting for Latch...."

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    .line 320
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    .line 321
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Latch Released"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wasCompletedSuccessfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Latch timeout."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 329
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_TIMEOUT:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 330
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_TIMEOUT:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 335
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Back to main Thread...."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "freeRollResponseHandlerBuilder: "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->build()Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static makeFreeBTCRoll(Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;
    .locals 6

    .line 344
    invoke-static {}, Lcom/chlegou/bitbot/network/RetrofitClient;->getPublicInstance()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/network/HttpClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/network/HttpClient;

    .line 347
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 348
    invoke-static {}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;->builder()Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "https://freebitco.in/"

    invoke-interface {v0, v5, v3, v4}, Lcom/chlegou/bitbot/network/HttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v3

    .line 353
    new-instance v4, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    invoke-direct {v4, v2, v1, v0, p0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;-><init>(Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;Ljava/util/concurrent/CountDownLatch;Lcom/chlegou/bitbot/network/HttpClient;Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;)V

    invoke-interface {v3, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 568
    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Waiting for Latch...."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x4

    .line 569
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    .line 570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Latch Released"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wasCompletedSuccessfully: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Latch timeout."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 577
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 578
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_TIMEOUT:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 579
    sget-object p0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_TIMEOUT:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 584
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Back to main Thread...."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "freeRollResponseHandlerBuilder: "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->build()Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->build()Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;

    move-result-object p0

    return-object p0
.end method
