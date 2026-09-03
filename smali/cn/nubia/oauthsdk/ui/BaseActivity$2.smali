.class Lcn/nubia/oauthsdk/ui/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/ui/BaseActivity;->hideSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/ui/BaseActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/BaseActivity$2;->this$0:Lcn/nubia/oauthsdk/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity$2;->this$0:Lcn/nubia/oauthsdk/ui/BaseActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcn/nubia/oauthsdk/ui/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity$2;->this$0:Lcn/nubia/oauthsdk/ui/BaseActivity;

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
