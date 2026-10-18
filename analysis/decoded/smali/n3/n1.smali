.class public final synthetic Ln3/n1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/o$b;
.implements Ls3/l;


# static fields
.field public static final synthetic b:Ln3/n1;

.field public static final synthetic c:Ln3/n1;

.field public static final synthetic d:Ln3/n1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/n1;

    invoke-direct {v0}, Ln3/n1;-><init>()V

    sput-object v0, Ln3/n1;->b:Ln3/n1;

    new-instance v0, Ln3/n1;

    invoke-direct {v0}, Ln3/n1;-><init>()V

    sput-object v0, Ln3/n1;->c:Ln3/n1;

    new-instance v0, Ln3/n1;

    invoke-direct {v0}, Ln3/n1;-><init>()V

    sput-object v0, Ln3/n1;->d:Ln3/n1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lm5/j;)V
    .locals 0

    check-cast p1, Lo3/b;

    return-void
.end method

.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v1, Lt3/a;

    invoke-direct {v1}, Lt3/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 4

    sget-object v0, Ln3/o1$a;->i:Ln3/o1$a;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Ln3/o1$a;->i:Ln3/o1$a;

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ln3/o1$a;

    .line 9
    new-instance v0, Lm5/j;

    invoke-direct {v0, v1}, Lm5/j;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 10
    invoke-direct {p1, v0}, Ln3/o1$a;-><init>(Lm5/j;)V

    :goto_1
    return-object p1
.end method
