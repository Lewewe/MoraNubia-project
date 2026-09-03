.class public interface abstract Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlaymateOpListener"
.end annotation


# virtual methods
.method public abstract getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;
.end method

.method public abstract saveState(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V
.end method

.method public abstract startPlay(I)V
.end method
