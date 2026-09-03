.class public abstract Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
.super Ljava/lang/Object;
.source "Addon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;->clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object p0

    return-object p0
.end method

.method public abstract restore()V
.end method
