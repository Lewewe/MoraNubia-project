.class Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1$1;
.super Ljava/lang/Object;
.source "WebResourceManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;->onNoBundleVersionUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1$1;->this$1:Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->net_work_bad:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 68
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1$1;->this$1:Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;->next()V

    :cond_1
    return-void
.end method
