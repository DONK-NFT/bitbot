.class public final synthetic Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    iput-object p2, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->lambda$sendSignInLinkToEmail$3$com-chlegou-bitbot-activity-AuthActivity(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
