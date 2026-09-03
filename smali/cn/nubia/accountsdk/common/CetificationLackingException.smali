.class public Lcn/nubia/accountsdk/common/CetificationLackingException;
.super Ljava/lang/Exception;
.source "CetificationLackingException.java"


# static fields
.field public static final PUB_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQ"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    const-string v0, "CetificationActivity is lack,please comfirm account apk version >= V5.0.6"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p0, "CetificationActivity is lack"

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
