.class public final synthetic Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;
.super Ljava/lang/Object;
.source "AdaptMarshaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/AdaptMarshallerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lba/e$b;->values()[Lba/e$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lba/e$b;->l:Lba/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lba/e$b;->m:Lba/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lba/e$b;->n:Lba/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lba/e$b;->o:Lba/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lba/e$b;->p:Lba/e$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sput-object v0, Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lba/g$c;->values()[Lba/g$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    aput v6, v0, v5

    const/4 v7, 0x6

    aput v7, v0, v6

    sput-object v0, Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lba/g$d;->values()[Lba/g$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    aput v5, v0, v4

    sput-object v0, Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
