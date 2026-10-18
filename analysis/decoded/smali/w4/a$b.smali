.class public final Lw4/a$b;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw4/a$b;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lw4/a$b;->b:I

    .line 4
    iput-object p3, p0, Lw4/a$b;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lw4/a$b;->d:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lw4/a$b;->e:Ljava/util/HashMap;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lw4/a$b;->f:I

    return-void
.end method

.method public static b(ILjava/lang/String;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p0, "%d %s/%d/%d"

    .line 2
    invoke-static {p0, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x60

    if-ge p0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    invoke-static {v2}, Lm5/a;->a(Z)V

    const/16 v2, 0x1f40

    if-eqz p0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const v0, 0xac44

    const-string v2, "L16"

    const/16 v3, 0xa

    if-eq p0, v3, :cond_2

    const/16 v3, 0xb

    if-ne p0, v3, :cond_1

    .line 2
    invoke-static {v3, v2, v0, v1}, Lw4/a$b;->b(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported static paylod type "

    .line 4
    invoke-static {v1, p0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    .line 6
    invoke-static {v3, v2, v0, p0}, Lw4/a$b;->b(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "PCMA"

    .line 7
    invoke-static {v0, p0, v2, v1}, Lw4/a$b;->b(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "PCMU"

    .line 8
    invoke-static {v0, p0, v2, v1}, Lw4/a$b;->b(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lw4/a;
    .locals 4

    const-string v0, "rtpmap"

    .line 1
    :try_start_0
    iget-object v1, p0, Lw4/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lw4/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lm5/g0;->a:I

    invoke-static {v0}, Lw4/a$c;->a(Ljava/lang/String;)Lw4/a$c;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lw4/a$b;->d:I

    invoke-static {v0}, Lw4/a$b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw4/a$c;->a(Ljava/lang/String;)Lw4/a$c;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Lw4/a;

    iget-object v2, p0, Lw4/a$b;->e:Ljava/util/HashMap;

    invoke-static {v2}, Lu6/x;->a(Ljava/util/Map;)Lu6/x;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lw4/a;-><init>(Lw4/a$b;Lu6/x;Lw4/a$c;Lw4/a$a;)V
    :try_end_0
    .catch Ln3/i1; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
