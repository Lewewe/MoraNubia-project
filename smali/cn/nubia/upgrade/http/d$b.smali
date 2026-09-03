.class public Lcn/nubia/upgrade/http/d$b;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/http/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/upgrade/http/d$b;->a:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    return-void
.end method
