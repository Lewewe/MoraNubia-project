.class public abstract Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;
.super Ljava/lang/Object;
.source "JavascriptBaseAdapter.java"

# interfaces
.implements Lcn/nubia/oauthsdk/js/IJsProxy;


# instance fields
.field public mCxt:Landroid/content/Context;

.field public mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/oauthsdk/js/IJsProxy;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;->mCxt:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;->mProxy:Lcn/nubia/oauthsdk/js/IJsProxy;

    return-void
.end method


# virtual methods
.method public abstract getCode(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method
