.class public Lcom/zte/payment/common/IPCMethods$Callback;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# static fields
.field public static final R_KEY_USER_LOGIN_RESULT:Ljava/lang/String; = "user_longin_result"

.field public static final R_KEY_USER_LOGIN_STATE:Ljava/lang/String; = "longin_state"

.field public static final R_KEY_USER_RECHARGE_RESULT:Ljava/lang/String; = "recharge_result"

.field public static final VAL_CANCEL:I = 0x0

.field public static final VAL_FAILED:I = 0x2

.field public static final VAL_KEY_LOGIN_IN:Ljava/lang/String; = "longin_in"

.field public static final VAL_KEY_LOGIN_OUT:Ljava/lang/String; = "longin_out"

.field public static final VAL_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
