.class Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;
.super Ljava/lang/Object;
.source "AigcAccountManager.java"

# interfaces
.implements Lcom/zte/zteaccount/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/account/AigcAccountManager;->isAccountLogin(Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

.field final synthetic val$loginInterface:Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/account/AigcAccountManager;Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;->this$0:Lcn/nubia/redmagickyi/util/account/AigcAccountManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;->val$loginInterface:Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/account/AigcAccountManager$1;->val$loginInterface:Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/account/AccountLoginInterface;->isAccountLogin(Z)V

    :cond_0
    return-void
.end method
