.class public final enum Lgc/b0$a;
.super Ljava/lang/Enum;
.source "messages.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgc/b0$a;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lgc/b0$a;

.field public static final enum j:Lgc/b0$a;

.field public static final enum k:Lgc/b0$a;

.field public static final enum l:Lgc/b0$a;

.field public static final enum m:Lgc/b0$a;

.field public static final enum n:Lgc/b0$a;

.field public static final synthetic o:[Lgc/b0$a;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lgc/b0$a;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgc/b0$a;->i:Lgc/b0$a;

    .line 2
    new-instance v1, Lgc/b0$a;

    const-string v3, "LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgc/b0$a;->j:Lgc/b0$a;

    .line 3
    new-instance v3, Lgc/b0$a;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgc/b0$a;->k:Lgc/b0$a;

    .line 4
    new-instance v5, Lgc/b0$a;

    const-string v7, "HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgc/b0$a;->l:Lgc/b0$a;

    .line 5
    new-instance v7, Lgc/b0$a;

    const-string v9, "HIGHEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgc/b0$a;->m:Lgc/b0$a;

    .line 6
    new-instance v9, Lgc/b0$a;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lgc/b0$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgc/b0$a;->n:Lgc/b0$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lgc/b0$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lgc/b0$a;->o:[Lgc/b0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lgc/b0$a;->h:I

    return-void
.end method

.method public static b(I)Lgc/b0$a;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lgc/b0$a;->m:Lgc/b0$a;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lgc/b0$a;->l:Lgc/b0$a;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lgc/b0$a;->k:Lgc/b0$a;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lgc/b0$a;->j:Lgc/b0$a;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lgc/b0$a;->i:Lgc/b0$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgc/b0$a;
    .locals 1

    const-class v0, Lgc/b0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgc/b0$a;

    return-object p0
.end method

.method public static values()[Lgc/b0$a;
    .locals 1

    sget-object v0, Lgc/b0$a;->o:[Lgc/b0$a;

    invoke-virtual {v0}, [Lgc/b0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc/b0$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lgc/b0$a;->n:Lgc/b0$a;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lgc/b0$a;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
