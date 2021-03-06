export type RecordItem = {
  tags: Tag[]
  notes: string
  type: string
  amount: number
  createAt?: Date
}

export type Tag = {
  id: string
  name: string
  type: string
}

export type TagListModel = {
  data: Tag[]
  fetch: () => Tag[]
  create: (name: string) => 'success' | 'duplicated' // 联合类型
  update: (id: string, name: string) => 'success' | 'not found' | 'duplicated'
  remove: (id: string) => boolean
  save: () => void
}
