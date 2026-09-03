.class Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;
.super Ljava/lang/Object;
.source "NubiaAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;

.field final synthetic val$accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
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

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;->this$0:Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;->val$accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;->this$0:Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2;->val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$2$2;->val$accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->access$000(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V

    return-void
.end method
