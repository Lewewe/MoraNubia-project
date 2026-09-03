.class public final enum Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;
.super Ljava/lang/Enum;
.source "VerifyCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

.field public static final enum FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

.field public static final enum REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;


# instance fields
.field requestCode:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;
    .locals 2

    .line 59
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    sget-object v1, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "REGISTER"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->REGISTER:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    const/4 v1, 0x1

    const/16 v2, 0x65

    const-string v3, "FORGET_PHONE_PSW"

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->FORGET_PHONE_PSW:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->$values()[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->$VALUES:[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->requestCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 59
    const-class v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->$VALUES:[Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$VerifyType;

    return-object v0
.end method
