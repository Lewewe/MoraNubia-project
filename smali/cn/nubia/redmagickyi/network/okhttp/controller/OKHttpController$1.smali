.class Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;
.super Ljava/lang/Object;
.source "OKHttpController.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

.field final synthetic val$args:[Ljava/lang/reflect/Type;

.field final synthetic val$raw:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;->val$raw:Ljava/lang/Class;

    iput-object p3, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;->val$args:[Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 0

    .line 408
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;->val$args:[Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 0

    .line 404
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;->val$raw:Ljava/lang/Class;

    return-object p0
.end method
