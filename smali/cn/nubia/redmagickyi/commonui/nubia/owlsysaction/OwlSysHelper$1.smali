.class Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper$1;
.super Ljava/lang/Object;
.source "OwlSysHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlNubiaLoginCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper$1;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    .line 205
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    :goto_0
    const-string v0, "mora_nubia_login"

    const-string v1, "nubia_login_check"

    invoke-static {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlDayCv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
