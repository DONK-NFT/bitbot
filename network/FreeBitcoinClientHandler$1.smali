.class Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;
.super Ljava/lang/Object;
.source "FreeBitcoinClientHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->remoteCall(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$call:Lretrofit2/Call;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$remoteCallResponse:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Lretrofit2/Call;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$remoteCallResponse:[Ljava/lang/String;

    iput-object p2, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$call:Lretrofit2/Call;

    iput-object p3, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$remoteCallResponse:[Ljava/lang/String;

    iget-object v1, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$call:Lretrofit2/Call;

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    invoke-static {}, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remoteCallResponse :: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$remoteCallResponse:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    invoke-static {}, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached exception in freePlay."

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/chlegou/bitbot/network/FreeBitcoinClientHandler$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    throw v0
.end method
