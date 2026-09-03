.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageBundleUpdate.java"


# instance fields
.field bundlePath:Ljava/lang/String;

.field needNewAB:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setBundlePath(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;->bundlePath:Ljava/lang/String;

    return-void
.end method

.method public setNeedNewAB(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;->needNewAB:Z

    return-void
.end method
