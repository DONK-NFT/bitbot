.class Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuFragment.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 83
    :sswitch_0
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToOfficialWebsite()V

    goto/16 :goto_0

    .line 97
    :sswitch_1
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToUpdateActivity()V

    goto/16 :goto_0

    .line 55
    :sswitch_2
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->showShareDialog()V

    goto/16 :goto_0

    .line 76
    :sswitch_3
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToSettingsActivity()V

    goto :goto_0

    .line 62
    :sswitch_4
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToPlayStore()V

    goto :goto_0

    .line 48
    :sswitch_5
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToNewsActivity()V

    goto :goto_0

    .line 104
    :sswitch_6
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToLinksActivity()V

    goto :goto_0

    .line 90
    :sswitch_7
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->sendContactSupportEmail()V

    goto :goto_0

    .line 69
    :sswitch_8
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/chlegou/bitbot/activity/MainActivity;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/MainActivity;->showAboutDialog()V

    .line 110
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;->this$0:Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0034 -> :sswitch_8
        0x7f0a003c -> :sswitch_7
        0x7f0a0042 -> :sswitch_6
        0x7f0a0049 -> :sswitch_5
        0x7f0a004a -> :sswitch_4
        0x7f0a004c -> :sswitch_3
        0x7f0a004d -> :sswitch_2
        0x7f0a004f -> :sswitch_1
        0x7f0a0050 -> :sswitch_0
    .end sparse-switch
.end method
