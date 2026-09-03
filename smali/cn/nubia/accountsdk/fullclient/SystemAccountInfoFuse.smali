.class public Lcn/nubia/accountsdk/fullclient/SystemAccountInfoFuse;
.super Ljava/lang/Object;
.source "SystemAccountInfoFuse.java"


# instance fields
.field public accountInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

.field public zteSystemAccountInfo:Lcn/nubia/accountsdk/fullclient/ZteSystemAccountInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 15
    const-string p0, "SystemAccountInfoFuse [mKeyValueBundle=]"

    return-object p0
.end method
