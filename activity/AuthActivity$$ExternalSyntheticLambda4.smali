.class public final synthetic Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/AuthActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda4;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda4;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    invoke-virtual {v0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->lambda$firebaseAuthWithGoogle$2$com-chlegou-bitbot-activity-AuthActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
