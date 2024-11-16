.class public Lcom/chlegou/bitbot/activity/AuthActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AuthActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/AuthActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/AuthActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/AuthActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/AuthActivity;

    .line 30
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0a00a3

    const-string v2, "field \'btnSignIn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/AuthActivity;->btnSignIn:Landroidx/appcompat/widget/AppCompatButton;

    .line 31
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a01b7

    const-string v2, "field \'loginEmailContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmailContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    const-class v0, Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a01b8

    const-string v2, "field \'loginEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    .line 33
    const-class v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const v1, 0x7f0a024c

    const-string v2, "field \'progressIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/AuthActivity;->progressIndicator:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 34
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a01d9

    const-string v2, "field \'messageContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/AuthActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/AuthActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/AuthActivity;

    .line 44
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/AuthActivity;->btnSignIn:Landroidx/appcompat/widget/AppCompatButton;

    .line 45
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmailContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 46
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    .line 47
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/AuthActivity;->progressIndicator:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 48
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
