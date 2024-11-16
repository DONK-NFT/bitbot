.class Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field final synthetic this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

.field final synthetic val$tcGiQefA:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$tokenValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tokenValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tcGiQefA:Ljava/lang/String;

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

    .line 286
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Something went wrong when Calling API."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 289
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY_CHECK:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 290
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY_CHECK:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 292
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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

    .line 183
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

    .line 185
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 187
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_CHECK_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 188
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_CHECK_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 190
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 194
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 197
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tcGiQefAValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "free_play_query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tokenValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tcGiQefA:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeBitcoinSynchronizerService:Lcom/chlegou/bitbot/network/HttpClient;

    invoke-static {}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tokenValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->val$tcGiQefA:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay;->buildFreePlayBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "https://freebitco.in/"

    invoke-interface {p2, v1, v0, p1}, Lcom/chlegou/bitbot/network/HttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    .line 212
    new-instance p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;

    invoke-direct {p2, p0}, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;-><init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
