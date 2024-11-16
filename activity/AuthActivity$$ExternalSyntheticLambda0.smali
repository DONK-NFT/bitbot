.class public final synthetic Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

.field public final synthetic f$1:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    iput-object p2, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;->f$0:Lcom/chlegou/bitbot/activity/AuthActivity;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/chlegou/bitbot/activity/AuthActivity;->lambda$openPasteSignInLinkDialog$5$com-chlegou-bitbot-activity-AuthActivity(Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
