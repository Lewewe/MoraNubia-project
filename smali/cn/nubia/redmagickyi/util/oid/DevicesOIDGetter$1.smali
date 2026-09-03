.class Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$1;
.super Ljava/lang/Object;
.source "DevicesOIDGetter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->init(Landroid/content/Context;Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$1;->val$listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnIdsAvalid(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$1;->val$listener:Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    if-eqz p0, :cond_1

    .line 53
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;->OnIdsAvalid(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
