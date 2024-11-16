.class Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;
.super Ljava/lang/Object;
.source "FreeBitcoinAccountsActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->getFreeBitcoinAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/List<",
        "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong when getting freebitcoin accounts:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->showErrorSnackBar(Landroid/view/View;)V

    .line 315
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/chlegou/bitbot/models/FreeBitcoinAccount;",
            ">;>;)V"
        }
    .end annotation

    .line 296
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    .line 298
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freebitcoin accounts:  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object v1, v1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->emptyView:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p2, p2, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v1, 0x8

    if-lez p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->keepAwakeView:Landroid/view/View;

    iget-object p2, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p2, p2, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->flexibleAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p2, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p2, p2, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/Tools;->updateFlexibleAdapterWithList(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V

    .line 303
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p2, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->freeBitcoinAccounts:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$200(Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;Ljava/util/List;)V

    goto :goto_1

    .line 305
    :cond_2
    invoke-static {}, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Something went wrong when getting freebitcoin accounts."

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->showErrorSnackBar(Landroid/view/View;)V

    .line 308
    :goto_1
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity$3;->this$0:Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    iget-object p1, p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
