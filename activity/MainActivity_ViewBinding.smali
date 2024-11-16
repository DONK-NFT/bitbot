.class public Lcom/chlegou/bitbot/activity/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/MainActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/MainActivity;

    .line 27
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0a009a

    const-string v2, "field \'btnGithub\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/MainActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    .line 28
    const-class v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a00a3

    const-string v2, "field \'btnSignIn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/MainActivity;->btnSignIn:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/MainActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/MainActivity;

    .line 38
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/MainActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    .line 39
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/MainActivity;->btnSignIn:Lcom/google/android/material/button/MaterialButton;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
