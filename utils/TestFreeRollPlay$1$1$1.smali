.class Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;
.super Ljava/lang/Object;
.source "TestFreeRollPlay.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
.field final synthetic this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

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

    .line 270
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Something went wrong when Calling API."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 273
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 274
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FETCHING_FREE_PLAY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 276
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

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

    .line 215
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

    .line 217
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 219
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 220
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object p2, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_EMPTY_BODY:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 222
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 225
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "s"

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    array-length v0, p1

    const/16 v3, 0xe

    if-lt v0, v3, :cond_3

    .line 229
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->SUCCESS:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 230
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->SUCCESS_FREE_PLAY_CLAIMED:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 231
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->SUCCESS_FREE_PLAY_CLAIMED:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v5, p1, v4

    const-string v6, "%ROLLED_NUMBER%"

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 232
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->fullResponse(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 234
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->rolledNumber(J)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 235
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    aget-object v0, p1, v2

    const-string v1, "\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->balance(J)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    const/16 p2, 0xd

    .line 236
    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->lotteryTickets(J)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 239
    :cond_1
    aget-object p2, p1, v3

    if-eqz p2, :cond_2

    aget-object p2, p1, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 240
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->rewardPoints(J)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/joda/time/DateTime;->plusHours(I)Lorg/joda/time/DateTime;

    move-result-object p2

    invoke-virtual {p2}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->nextRoll(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 245
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "e"

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    const-string v0, "e1"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 250
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_RESPONSE_ROLL_PLAYED:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 251
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v1, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_RESPONSE_ROLL_PLAYED:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 252
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->fullResponse(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 254
    iget-object p2, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p2, p2, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v0

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTime;->plusSeconds(I)Lorg/joda/time/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->nextRoll(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 256
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 258
    :cond_4
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->status(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 259
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_RESPONSE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->code(I)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 260
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    sget-object v0, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->ERROR_FREE_PLAY_RESPONSE:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;

    invoke-virtual {v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$Codes;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->message(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 261
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$freeRollResponseHandlerBuilder:Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;->fullResponse(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FreeBitcoinFreeRollResponseHandler$FreeBitcoinFreeRollResponseHandlerBuilder;

    .line 263
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1$1;->this$1:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1$1;->this$0:Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;

    iget-object p1, p1, Lcom/chlegou/bitbot/utils/TestFreeRollPlay$1;->val$jobCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
