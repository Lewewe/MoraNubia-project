.class public interface abstract annotation Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$Tag;
.super Ljava/lang/Object;
.source "SharedMemoryDesc.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Tag"
.end annotation


# static fields
.field public static final burst:B = 0x2t

.field public static final drain:B = 0x3t

.field public static final flush:B = 0x6t

.field public static final getStatus:B = 0x0t

.field public static final pause:B = 0x5t

.field public static final standby:B = 0x4t

.field public static final start:B = 0x1t
