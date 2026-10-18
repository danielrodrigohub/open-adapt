.class public final Lcom/google/android/exoplayer2/source/dash/c$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ll5/j$a;

.field public final b:I

.field public final c:Lr4/f$a;


# direct methods
.method public constructor <init>(Ll5/j$a;)V
    .locals 1

    .line 1
    sget-object v0, Lr4/d;->q:Ln3/t0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->c:Lr4/f$a;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->a:Ll5/j$a;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ll5/e0;Lt4/c;Ls4/b;I[ILj5/l;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;Ll5/j0;Lo3/v0;)Lcom/google/android/exoplayer2/source/dash/a;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/e0;",
            "Lt4/c;",
            "Ls4/b;",
            "I[I",
            "Lj5/l;",
            "IJZ",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/d$c;",
            "Ll5/j0;",
            "Lo3/v0;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->a:Ll5/j$a;

    invoke-interface {v2}, Ll5/j$a;->a()Ll5/j;

    move-result-object v12

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v12, v1}, Ll5/j;->j(Ll5/j0;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/c;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->c:Lr4/f$a;

    iget v15, v0, Lcom/google/android/exoplayer2/source/dash/c$a;->b:I

    move-object v3, v1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v13, p8

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-direct/range {v3 .. v18}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lr4/f$a;Ll5/e0;Lt4/c;Ls4/b;I[ILj5/l;ILl5/j;JIZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/d$c;)V

    return-object v1
.end method
