.class public Lcn/nubia/oauthsdk/js/SsoWebOAuthFactory;
.super Ljava/lang/Object;
.source "SsoWebOAuthFactory.java"


# static fields
.field public static final JS_NAME:Ljava/lang/String; = "oauthJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsAdapter(Landroid/content/Context;Lcn/nubia/oauthsdk/js/IJsProxy;)Lcn/nubia/oauthsdk/js/JavascriptBaseAdapter;
    .locals 1

    .line 12
    new-instance v0, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;

    invoke-direct {v0, p0, p1}, Lcn/nubia/oauthsdk/js/SsoWebOAuthAdapter;-><init>(Landroid/content/Context;Lcn/nubia/oauthsdk/js/IJsProxy;)V

    return-object v0
.end method
