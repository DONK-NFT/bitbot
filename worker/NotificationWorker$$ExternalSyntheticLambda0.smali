.class public final synthetic Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/Data;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/Data;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/work/Data;

    iput-wide p2, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/work/Data;

    iget-wide v1, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/chlegou/bitbot/worker/NotificationWorker$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/worker/NotificationWorker;->lambda$scheduleExactAfterSomeDelayInSeconds$0(Landroidx/work/Data;JLjava/lang/String;)V

    return-void
.end method
