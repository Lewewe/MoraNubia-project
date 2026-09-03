.class public interface abstract Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;
.super Ljava/lang/Object;
.source "BaseChildFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChildCallback"
.end annotation


# virtual methods
.method public abstract getFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;
.end method

.method public abstract onAccountInitComplete(Z)V
.end method

.method public abstract performRecreate()V
.end method

.method public abstract reload()V
.end method

.method public abstract shouldChangeBadgeState(Z)V
.end method
