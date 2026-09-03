.class Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$2;
.super Ljava/lang/Object;
.source "RedmagickyiApplication.java"

# interfaces
.implements Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccountChange()V
    .locals 1

    .line 120
    const-string p0, "RedmagickyiApplication"

    const-string v0, "Account changed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->get(Landroid/content/Context;)Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->clearCloudToken()V

    return-void
.end method
