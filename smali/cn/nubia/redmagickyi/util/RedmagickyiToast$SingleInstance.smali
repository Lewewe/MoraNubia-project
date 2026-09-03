.class Lcn/nubia/redmagickyi/util/RedmagickyiToast$SingleInstance;
.super Ljava/lang/Object;
.source "RedmagickyiToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/RedmagickyiToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/redmagickyi/util/RedmagickyiToast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;-><init>(Lcn/nubia/redmagickyi/util/RedmagickyiToast$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/util/RedmagickyiToast$SingleInstance;->instance:Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
