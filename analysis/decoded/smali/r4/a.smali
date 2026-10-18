.class public abstract Lr4/a;
.super Lr4/m;
.source "BaseMediaChunk.java"


# instance fields
.field public final k:J

.field public final l:J

.field public m:Lr4/c;

.field public n:[I


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJJJ)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p14

    .line 1
    invoke-direct/range {v0 .. v11}, Lr4/m;-><init>(Ll5/j;Ll5/m;Ln3/s0;ILjava/lang/Object;JJJ)V

    move-wide/from16 v0, p10

    .line 2
    iput-wide v0, v12, Lr4/a;->k:J

    move-wide/from16 v0, p12

    .line 3
    iput-wide v0, v12, Lr4/a;->l:J

    return-void
.end method


# virtual methods
.method public final e(I)I
    .locals 1

    iget-object v0, p0, Lr4/a;->n:[I

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    aget p1, v0, p1

    return p1
.end method
