.class public Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "BottomNavigationMenuFragment.java"


# instance fields
.field private navigationView:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private handleNewsBadge()V
    .locals 7

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 127
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->getNotReadNewsCount()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a017b

    if-lez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 132
    instance-of v5, v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/chlegou/bitbot/utils/CountDrawable;-><init>(Landroid/content/Context;)V

    .line 133
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/chlegou/bitbot/utils/CountDrawable;->setCount(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 137
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 36
    invoke-super {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0046

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0213

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/navigation/NavigationView;

    iput-object p2, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 40
    invoke-virtual {p2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const p3, 0x7f0a00ea

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 42
    iget-object p2, p0, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    new-instance p3, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;

    invoke-direct {p3, p0}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment$1;-><init>(Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStart()V

    const-string v0, "BottomNavigationMenuFragment"

    const-string v1, "Started Dragging."

    .line 121
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->handleNewsBadge()V

    return-void
.end method
