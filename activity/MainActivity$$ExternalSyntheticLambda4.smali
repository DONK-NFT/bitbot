.class public final synthetic Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/chlegou/bitbot/activity/MainActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {v0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->lambda$firebaseAuthWithGoogle$0$com-chlegou-bitbot-activity-MainActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
