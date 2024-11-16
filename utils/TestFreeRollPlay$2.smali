.class Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->makeFreeBTCRoll(Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

.field final synthetic val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

.field final synthetic val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

.field final synthetic val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;Ljava/util/concurrent/CountDownLatch;Lcom/chlegou/bitbot/network/HttpClient;Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    iput-object p4, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 555
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Something went wrong when Calling API."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 558
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREEBITCOIN_WEBSITE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 559
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREEBITCOIN_WEBSITE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 561
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSuccessful: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 360
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREEBITCOIN_WEBSITE_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 361
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREEBITCOIN_WEBSITE_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 363
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 367
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ".*token_name\\s*=\\s*[\"\']([^\"|^\']*)[\"\'].*"

    .line 374
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 375
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 376
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tokenNameMatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 379
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 381
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_NAME:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 382
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_NAME:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 384
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    const-string v0, ".*tcGiQefA\\s*=\\s*[\"\']([^\"|^\']*)[\"\'].*"

    .line 387
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 388
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 389
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tcGiQefAMatcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 392
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 394
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TCGIQEFA:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 395
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TCGIQEFA:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 397
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 401
    :cond_2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 402
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v6, "token = %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string/jumbo v6, "tcGiQefA = %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, ".*\\$\\([\"\']#%TOKEN%[\"\']\\)\\.val\\([\"\']([^\"|^\']*)[\"\']\\).*"

    const-string v4, "%TOKEN%"

    .line 407
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 408
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 409
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tokenValueMatcher: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    .line 412
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_3

    .line 413
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 414
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_VALUE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 415
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v3, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_SCRAPPING_TOKEN_VALUE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 417
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 422
    :cond_3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 423
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 424
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string/jumbo v3, "tokenValue = %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildHeaders()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    invoke-virtual {v3, v0}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildFreePlayCheckQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "https://freebitco.in/cgi-bin/fp_check.pl"

    invoke-interface {p2, v4, v1, v3}, Lcom/chlegou/bitbot/network/HttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p2

    .line 429
    new-instance v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;-><init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_4
    return-void
.end method
