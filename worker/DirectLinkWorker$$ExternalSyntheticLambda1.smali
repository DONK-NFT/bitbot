.class public final synthetic Lcom/chlegou/bitbot/worker/DirectLinkWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/worker/DirectLinkWorker;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/worker/DirectLinkWorker;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/worker/DirectLinkWorker$$ExternalSyntheticLambda1;->f$0:Lcom/chlegou/bitbot/worker/DirectLinkWorker;

    iput-object p2, p0, Lcom/chlegou/bitbot/worker/DirectLinkWorker$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/chlegou/bitbot/worker/DirectLinkWorker$$ExternalSyntheticLambda1;->f$0:Lcom/chlegou/bitbot/worker/DirectLinkWorker;

    iget-object v1, p0, Lcom/chlegou/bitbot/worker/DirectLinkWorker$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/worker/DirectLinkWorker;->lambda$doWork$1$com-chlegou-bitbot-worker-DirectLinkWorker(Landroid/os/Bundle;)V

    return-void
.end method
