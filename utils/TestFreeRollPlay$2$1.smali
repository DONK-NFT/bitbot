.class Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field final synthetic this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

.field final synthetic val$tcGiQefA:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$tokenValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tokenValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tcGiQefA:Ljava/lang/String;

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

    .line 535
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Something went wrong when Calling API."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 538
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY_CHECK:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 539
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY_CHECK:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 541
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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

    .line 432
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

    .line 434
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 436
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_CHECK_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 437
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_CHECK_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 439
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 443
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 446
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tcGiQefAValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "free_play_query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object v1, v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tokenValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tcGiQefA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;

    iget-object v1, v1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2;->val$freeBitcoinSynchronizer:Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tokenValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;->val$tcGiQefA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/chlegou/bitbot/models/FreeBitcoinSynchronizer;->buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "https://freebitco.in/"

    invoke-interface {p2, v1, v0, p1}, Lcom/chlegou/bitbot/network/HttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    .line 461
    new-instance p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1$1;

    invoke-direct {p2, p0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1$1;-><init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$2$1;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
