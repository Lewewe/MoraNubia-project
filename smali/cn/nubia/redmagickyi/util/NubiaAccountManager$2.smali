.class Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "NubiaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAccountManager;->checkAccountLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
    invoke-super {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->val$context:Landroid/content/Context;

    new-instance v1, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;-><init>(Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->access$100(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " | errorMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->val$context:Landroid/content/Context;

    new-instance p2, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$1;-><init>(Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;)V

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->access$100(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
