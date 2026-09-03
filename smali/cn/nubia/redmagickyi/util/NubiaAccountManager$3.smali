.class Lcn/nubia/redmagickyi/util/NubiaAccountManager$3;
.super Ljava/lang/Object;
.source "NubiaAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAccountManager;->checkAccountLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$3;->val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$3;->val$onLoginCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->access$000(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;Z)V

    return-void
.end method
