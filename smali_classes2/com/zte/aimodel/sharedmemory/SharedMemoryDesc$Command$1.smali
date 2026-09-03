.class Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$1;
.super Ljava/lang/Object;
.source "SharedMemoryDesc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 1

    .line 281
    new-instance p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(Landroid/os/Parcel;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 0

    .line 285
    new-array p0, p1, [Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$1;->newArray(I)[Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p0

    return-object p0
.end method
