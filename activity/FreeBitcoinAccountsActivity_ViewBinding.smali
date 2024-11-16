.class public Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FreeBitcoinAccountsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    .line 31
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f0a0053

    const-string v2, "field \'adContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0252

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f0a02bd

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a010e

    const-string v2, "field \'emptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->emptyView:Landroid/widget/RelativeLayout;

    .line 35
    const-class v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a0091

    const-string v2, "field \'btnBitbotWebapp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnBitbotWebapp:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a01a2

    const-string v1, "field \'keepAwakeView\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeView:Landroid/view/View;

    .line 37
    const-class v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a009c

    const-string v2, "field \'btnKeepAwake\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnKeepAwake:Lcom/google/android/material/button/MaterialButton;

    .line 38
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a01a1

    const-string v2, "field \'keepAwakeStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeStatus:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a01a0

    const-string v2, "field \'keepAwakeDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f0a0322

    const-string v2, "field \'whitelistContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->whitelistContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 41
    const-class v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a00a5

    const-string v2, "field \'btnWhitelistSettings\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnWhitelistSettings:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    .line 51
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 52
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 54
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->emptyView:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnBitbotWebapp:Lcom/google/android/material/button/MaterialButton;

    .line 56
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeView:Landroid/view/View;

    .line 57
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnKeepAwake:Lcom/google/android/material/button/MaterialButton;

    .line 58
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeStatus:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->whitelistContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 61
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->btnWhitelistSettings:Lcom/google/android/material/button/MaterialButton;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
