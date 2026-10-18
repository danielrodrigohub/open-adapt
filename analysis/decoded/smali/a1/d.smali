.class public final synthetic La1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lr3/s$c;


# static fields
.field public static final synthetic a:La1/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La1/d;

    invoke-direct {v0}, La1/d;-><init>()V

    sput-object v0, La1/d;->a:La1/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f1100dc

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f1100dd

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const p0, 0x7f1100de

    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Lfd/b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/JsonLexer;->fail$default(Lkotlinx/serialization/json/internal/JsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    .line 2
    new-instance p0, Lfd/b;

    .line 3
    invoke-direct {p0}, Lfd/b;-><init>()V

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p2, p0}, Lo7/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;)Lr3/s;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lr3/v;

    invoke-direct {v0, p1}, Lr3/v;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    new-instance v1, Lr3/a0;

    invoke-direct {v1, v0}, Lr3/a0;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3
    new-instance v1, Lr3/a0;

    invoke-direct {v1, v0}, Lr3/a0;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catch Lr3/a0; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p1}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lr3/q;

    invoke-direct {v0}, Lr3/q;-><init>()V

    :goto_0
    return-object v0
.end method
