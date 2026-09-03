.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;
.super Ljava/lang/Object;
.source "IFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;,
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$FEATURE;
    }
.end annotation


# static fields
.field public static final CHAT:I = 0x0

.field public static final EVENT:I = 0x1


# instance fields
.field private mGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;->setFeatureGetter(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V

    return-void
.end method


# virtual methods
.method protected getFeatureGetter()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;->mGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    return-object p0
.end method

.method public setFeatureGetter(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;->mGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature$IGetter;

    return-void
.end method
