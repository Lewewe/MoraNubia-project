.class public Lcom/zte/payment/common/IPCMethods$GetUserInfo;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUserInfo"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "getUserInfo"

.field public static final P_KEY_NO_LOGIN_GUIDE:Ljava/lang/String; = "no_login_guide"

.field public static final R_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final R_KEY_USER_LOGGED:Ljava/lang/String; = "user_logged"

.field public static final R_KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final R_KEY_USER_TOKEN:Ljava/lang/String; = "user_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
