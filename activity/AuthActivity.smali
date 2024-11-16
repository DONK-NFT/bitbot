.class public Lcom/chlegou/bitbot/activity/AuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RC_SIGN_IN:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "AuthActivity"


# instance fields
.field btnSignIn:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00a3
    .end annotation
.end field

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field loginEmail:Lcom/google/android/material/textfield/TextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b8
    .end annotation
.end field

.field loginEmailContainer:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b7
    .end annotation
.end field

.field messageContainer:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d9
    .end annotation
.end field

.field progressIndicator:Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a024c
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private configureGoogleSignInClient()V
    .locals 2

    .line 193
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v1, "20505846597-6n44qta53v70kogidosqm48vpvfrp501.apps.googleusercontent.com"

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 197
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-void
.end method

.method private firebaseAuthWithGoogle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p1, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 226
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda4;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    .line 227
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private handleSignInResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 202
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_0

    const-string p1, "<font color=\'#D50000\'><b>ERROR:</b></font> Undefined Account."

    .line 204
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firebaseAuthWithGoogle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->firebaseAuthWithGoogle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 214
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInResult:failed code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInResult:failed with message= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInResult:failed with getLocalizedMessage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInResult:failed with getCause= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\'#D50000\'><b>ERROR:</b></font> SignIn failed with code:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$openPasteSignInLinkDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private openPasteSignInLinkDialog()V
    .locals 4

    .line 345
    new-instance v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 346
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Paste Sign In Link:"

    .line 347
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f060073

    .line 348
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 349
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v2, 0x14

    const/16 v3, 0x1e

    .line 350
    invoke-virtual {v1, v2, v2, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setPaddingRelative(IIII)V

    .line 351
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    const-string v0, "Submit"

    .line 354
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda1;

    const-string v2, "Cancel"

    .line 368
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "input_method"

    .line 139
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$firebaseAuthWithGoogle$2$com-chlegou-bitbot-activity-AuthActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "signInWithCredential:success"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "<font color=\'#00C853\'><b>SUCCESS:</b></font> Successfully signed in to your account. Go back to home page in order to proceed using BitBot."

    .line 231
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    .line 233
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInWithCredential:failure :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "<font color=\'#D50000\'><b>ERROR:</b></font> SignIn failed with Credential."

    .line 238
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$com-chlegou-bitbot-activity-AuthActivity(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->sendSignInLinkToEmail()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-chlegou-bitbot-activity-AuthActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->sendSignInLinkToEmail()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$openPasteSignInLinkDialog$5$com-chlegou-bitbot-activity-AuthActivity(Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 355
    sget-object p2, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string p3, "SignInLink Submit"

    invoke-static {p2, p3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 362
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Please Insert a valid Email Sign In Link."

    .line 363
    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->showUIFeedback(Ljava/lang/String;)V

    return-void

    .line 366
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->verifySignInLink(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$sendSignInLinkToEmail$3$com-chlegou-bitbot-activity-AuthActivity(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 280
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GROUP_AUTHENTICATION"

    const-string v1, "KEY_SIGN_IN_EMAIL"

    .line 281
    invoke-static {v0, v1, p1}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->saveInPreferencesGroupByKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "<font color=\'#00C853\'><b>SUCCESS:</b></font> We have successfully sent you a confirmation link to your email, please confirm it."

    goto :goto_0

    :cond_1
    const-string p1, "<font color=\'#D50000\'><b>ERROR:</b></font> Unable to send confirmation link. Please enter a valid email address."

    .line 287
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$verifySignInLink$4$com-chlegou-bitbot-activity-AuthActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 323
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "Successfully signed in with email link!"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "<font color=\'#00C853\'><b>SUCCESS:</b></font> Successfully signed in to your account. Go back to home page in order to proceed using BitBot."

    .line 325
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    .line 327
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda7;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 335
    :goto_0
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error signing in with email link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\'#D50000\'><b>ERROR:</b></font> Error signing in with email link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2329

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 119
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskRoot(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->isTaskRoot()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 122
    const-class v0, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-static {p0, v0, v2, v1}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    .line 125
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    const-class v0, Lcom/chlegou/bitbot/activity/MainActivity;

    invoke-static {p0, v0, v2, v1}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "sclick:button-click"

    const/16 v1, 0x3e8

    .line 151
    invoke-static {v0, v1}, Lhk/ids/gws/android/sclick/SClick;->check(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 157
    :sswitch_0
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "Sign in with Google"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->startSignInFlowUI()V

    .line 160
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2329

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 165
    :sswitch_1
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "Paste SignInLink"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->openPasteSignInLinkDialog()V

    goto :goto_0

    .line 172
    :sswitch_2
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "go back to home activity"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->onBackPressed()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a008f -> :sswitch_2
        0x7f0a0094 -> :sswitch_2
        0x7f0a009d -> :sswitch_1
        0x7f0a00a3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 71
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 74
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->configureGoogleSignInClient()V

    const p1, 0x7f0a0094

    .line 76
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a009d

    .line 77
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a008f

    .line 78
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->btnSignIn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080154

    .line 81
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 82
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->btnSignIn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils;->buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 86
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmailContainer:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$1;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$1;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->verifySignInLink()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->verifySignInLink()V

    return-void
.end method

.method sendSignInLinkToEmail()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 260
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->loginEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 261
    :goto_0
    sget-object v1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email text:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "<font color=\'#D50000\'><b>ERROR:</b></font> Invalid email address."

    .line 264
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->startSignInFlowUI()V

    .line 269
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    const-string v2, "https://my.bitbot.plus/in-app-auth/auto"

    .line 272
    invoke-virtual {v1, v2}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v1, v2}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setHandleCodeInApp(Z)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    const-string v3, "com.chlegou.bitbot"

    const-string v4, "5"

    .line 275
    invoke-virtual {v1, v3, v2, v4}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    const-string v2, "mauth.bitbot.plus"

    .line 276
    invoke-virtual {v1, v2}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setDynamicLinkDomain(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    .line 279
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->sendSignInLinkToEmail(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda6;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "<font color=\'#D50000\'><b>ERROR:</b></font> Sending confirmation link failed."

    .line 290
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method showSignInFlowUIFeedback(Ljava/lang/String;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->progressIndicator:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Lcom/chlegou/bitbot/utils/Tools;->stripHtml(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method startSignInFlowUI()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->progressIndicator:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/AuthActivity;->messageContainer:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public verifySignInLink()V
    .locals 4

    .line 296
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 298
    sget-object v0, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v1, "intent.getData() is null. no interest."

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent emailLink:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/AuthActivity;->verifySignInLink(Ljava/lang/String;)V

    return-void
.end method

.method public verifySignInLink(Ljava/lang/String;)V
    .locals 3

    .line 308
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->isSignInWithEmailLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    sget-object p1, Lcom/chlegou/bitbot/activity/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "not valid sign in email link. no interest."

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Not valid Email Sign In Link!"

    .line 310
    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->showUIFeedback(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "GROUP_AUTHENTICATION"

    const-string v1, "KEY_SIGN_IN_EMAIL"

    const-string v2, "empty-email-placeholder@bitbot.plus"

    .line 315
    invoke-static {v0, v1, v2}, Lcom/chlegou/bitbot/utils/PreferencesUtils;->getFromPreferencesGroupByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/AuthActivity;->startSignInFlowUI()V

    .line 322
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/AuthActivity$$ExternalSyntheticLambda5;-><init>(Lcom/chlegou/bitbot/activity/AuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "<font color=\'#D50000\'><b>ERROR:</b></font> Failed sign in With email."

    .line 340
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/AuthActivity;->showSignInFlowUIFeedback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
